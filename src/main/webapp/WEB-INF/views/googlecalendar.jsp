<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel='stylesheet' href='<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.css' />
<%-- <link rel='stylesheet' href='<%=request.getContextPath()%>/static/fullcalendar/scheduler.css' /> --%>
<script src='<%=request.getContextPath()%>/static/bootstrap/js/jquery.min.js'></script>
<script src='<%=request.getContextPath()%>/static/lib/moment.js'></script>
<script src='<%=request.getContextPath()%>/static/fullcalendar/fullcalendar.js'></script>
<%-- <script src='<%=request.getContextPath()%>/static/fullcalendar/scheduler.js'></script> --%>

<script type="text/javascript" src="<%=request.getContextPath()%>/static/uicalendar/gcal.js"></script>

<script type="text/javascript">
      // Your Client ID can be retrieved from your project in the Google
      // Developer Console, https://console.developers.google.com
      var CLIENT_ID = '321560069052-vr7k4cqf5lkqvp946q2fs4aqcigedbtt.apps.googleusercontent.com';

      var SCOPES = ["https://www.googleapis.com/auth/calendar.readonly"];

      /**
       * Check if current user has authorized this application.
       */
      function checkAuth() {
        gapi.auth.authorize(
          {
            'client_id': CLIENT_ID,
            'scope': SCOPES.join(' '),
            'immediate': true
          }, handleAuthResult);
      }

      /**
       * Handle response from authorization server.
       *
       * @param {Object} authResult Authorization result.
       */
      function handleAuthResult(authResult) {
        var authorizeDiv = document.getElementById('authorize-div');
        if (authResult && !authResult.error) {
          // Hide auth UI, then load client library.
          authorizeDiv.style.display = 'none';
          loadCalendarApi();
        } else {
          // Show auth UI, allowing the user to initiate authorization by
          // clicking authorize button.
          authorizeDiv.style.display = 'inline';
        }
      }

      /**
       * Initiate auth flow in response to user clicking authorize button.
       *
       * @param {Event} event Button click event.
       */
      function handleAuthClick(event) {
        gapi.auth.authorize(
          {client_id: CLIENT_ID, scope: SCOPES, immediate: false},
          handleAuthResult);
        return false;
      }

      /**
       * Load Google Calendar client library. List upcoming events
       * once client library is loaded.
       */
      function loadCalendarApi() {
        gapi.client.load('calendar', 'v3', listUpcomingEvents);
      }

      /**
       * Print the summary and start datetime/date of the next ten events in
       * the authorized user's calendar. If no events are found an
       * appropriate message is printed.
       */
      function listUpcomingEvents() {
    	  
    	
var primaryEvents = loadEventsByCalendarId('primary');
var bimEvents = loadEventsByCalendarId('tqjdese3rd8uqi84ln15i737ts@group.calendar.google.com');
$.when(primaryEvents, bimEvents).done(function(primaryEventsResult, bimEventsResult){
	dataevents = [primaryEventsResult, bimEventsResult]
  	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay,listWeek'
		},
		navLinks: true, // can click day/week names to navigate views
		editable: true,
		eventLimit: true, // allow "more" link when too many events
		firstDay: 1,
		eventSources: dataevents,
	    eventDrop: function(event, delta, revertFunc) {

	        alert(event.title + " was dropped on " + event.start.format());

	        if (!confirm("Are you sure about this change?")) {
	            revertFunc();
	        }

	    },
	    eventClick: function(calEvent, jsEvent, view) {
			var info = 'Event: ' + calEvent.title + ' - ' + 'Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY + ' - ' + 'View: ' + view.name;
	        alert(info);
	        // change the border color just for fun
	        $(this).css('border-color', 'red');

	    },
	    navLinkDayClick: function(date, jsEvent) {
	        console.log('day', date.format()); // date is a moment
	        console.log('coords', jsEvent.pageX, jsEvent.pageY);
	    }
	});
  

});
      }
      /**
       * Append a pre element to the body containing the given message
       * as its text node.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('output');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

       
      loadEventsByCalendarId = function(calendarId){
    	  var deferred = $.Deferred();
          var request = gapi.client.calendar.events.list({
              'calendarId': calendarId,
              'timeMin': (new Date()).toISOString(),
              'showDeleted': false,
              'singleEvents': true,
              'maxResults': 10,
              'orderBy': 'startTime'
            });

            request.execute(function(resp) {
            	var dataevents = [];
              var events = resp.items;
              appendPre('Upcoming events:');

              if (events.length > 0) {
                for (i = 0; i < events.length; i++) {
                  var event = events[i];
                  var when = event.start.dateTime;
                  if (!when) {
                    when = event.start.date;
                  }
                  appendPre(event.summary + ' (' + when + ')')
                  
                  var dataevent = {
                	  'id': event.id,
                	  'title': event.summary,
                	  'start': event.start.dateTime == undefined ? event.start.date :  event.start.dateTime,
                	  'end': event.end.dateTime == undefined ?  event.end.date : event.end.dateTime
                  };
                  dataevents.push(dataevent);
                }
              } else {
                appendPre('No upcoming events found.');
              }
              deferred.resolve(dataevents);
            });
            return deferred.promise();
      }
      
    </script>
    <script src="https://apis.google.com/js/client.js?onload=checkAuth">
    </script>
    
<!-- <script type='text/javascript'> -->

<!-- $(document).ready(function() { -->
<!--     $('#calendar').fullCalendar({ -->
<!--         googleCalendarApiKey: 'AIzaSyBm3kYuDlyo8gUJpah198TWhH_DS358YPQ', -->
<!--         eventSources: [ -->
<!--             { -->
<!--                 googleCalendarId: '321560069052-vr7k4cqf5lkqvp946q2fs4aqcigedbtt.apps.googleusercontent.com', -->
<!--                 className: 'Thanh VN', -->
<!--                 color: 'yellow',   // an option! -->
<!--                 textColor: 'black' // an option! -->
<!--             } -->
<!--         ] -->
<!--     }); -->
<!-- }); -->

<!-- </script> -->
    
</head>
<body>
	<div id="authorize-div" style="display: none">
      <span>Authorize access to Google Calendar API</span>
      <!--Button for the user to click to initiate auth sequence -->
      <button id="authorize-button" onclick="handleAuthClick(event)">
        Authorize
      </button>
    </div>
    <pre id="output"></pre>
    
<div id='calendar'></div>

</body>
</html>

