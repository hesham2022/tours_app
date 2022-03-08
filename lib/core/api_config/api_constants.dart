const kBaserUrl = 'https://fast-chamber-01622.herokuapp.com/api/v1';
const kTours = '$kBaserUrl/tours'; //Get Create
String kSigleTour(String id) => '$kTours/$id'; // Get Update Delete
String kTopTours(String id) => '$kTours/top-5-cheap'; // Get
String kMonthelyPlane(int year) => '$kTours/monthly-plan/$year'; // Get
String kToursStats(String id) => '$kTours/tour-stats'; // Get

String kDistanceOfTours({required String latLong}) =>
    '$kTours/distances/$latLong/unit/mi'; // Get
/// Auth Urls
const kUsers = '$kBaserUrl/users';
const kSignup = '$kUsers/signup';
const kLogin = '$kUsers/login';
const kForgotPassword = '$kUsers/forgotPassword';
String kResetPassword(int code) => '$kUsers/resetPassword/$code';
const kUpdatePassword = '$kUsers/updateMyPassword';
// Users
String kSingleUser(String id) => '$kUsers/$id'; // Get Update Delete
const kGetMe = '$kUsers/me';
const kDeleteMe = '$kUsers/deleteMe';
const kUpdateMe = '$kUsers/updateMe';

// Reviews
const kReviews = '$kBaserUrl/reviews'; // Get Create
String kSingleReview(String id) =>
    '$kBaserUrl/reviews/$id'; // Get Update Delete
// Reviews By Tour
String kReviewsByTour(String id) => '$kTours/$id/reviews'; // Get Create
// Booking
const kBooking = '$kBaserUrl/bookings'; // GET CREATE
String kSingleBooking(String id) => '$kBaserUrl/bookings/$id'; // GET CREATE
String kCheckout(String tourId) =>
    '$kBaserUrl/bookings/checkout-session/$tourId';
