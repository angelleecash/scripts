var gcm = require('node-gcm');
var message = new gcm.Message();
 
//API Server Key
var sender = new gcm.Sender('AIzaSyBqu6WPOJqC0GEiV-auaU0PXZ_3McYy-T0');
var registrationIds = [];
 
// Value the payload data to send...
message.addData('message',"\u270C Peace, Love \u2764 and PhoneGap \u2706!");
message.addData('title','Push Notification Sample' );
message.addData('msgcnt','3'); // Shows up in the notification in the status bar
message.addData('soundname','beep.wav'); //Sound to play upon notification receipt - put in the www folder in app
//message.collapseKey = 'demo';
//message.delayWhileIdle = true; //Default is false
message.timeToLive = 3000;// Duration in seconds to hold in GCM and retry before timing out. Default 4 weeks (2,419,200 seconds) if not specified.
 
// At least one reg id required
registrationIds.push('APA91bEDCK3nhfQLkSxYBnK3xxSYglZ0QtFA_hzJZ1eDe-Dcz4Qd_8vqnhMOcSY5VwwG3enOX9uy-xgwXfc2PzBMqsk2Pt4DIIJzptvGEpU6Q4P-_VBFy8HY13tOije1lC44cHVx5rVq_5L0bMIhWkVurWvfQl9fnJ-T5lD14ahTDigdL_Flcco');
registrationIds.push('APA91bHt1LmPfNUh4mLSfA3-Us7uZxh5Hwt4SLF2SISzPTAE0VKWydpxN1cbRrHR3V1GJgBAnWyp_rYvR9QcpDsF76aQ4Wd6twC_5MuTh-JUhBAtiTsmsT9VUl2wmAq1F2Du4vhbvbdZC41GOv551wN2zJKlS0GaZrz3DKyrgI6dZaE7ZN1me2w');

 
/**
 * Parameters: message-literal, registrationIds-array, No. of retries, callback-function
 */
sender.send(message, registrationIds, 4, function (result) {
    console.log(result);
});