import firebase from "firebase/app";
import "firebase/storage";

const firebaseConfig = {
    apiKey: "AIzaSyBN07N2QyZBQq2OiTMJdSoV5TGAlXm0P0M",
    authDomain: "waifei-db88d.firebaseapp.com",
    projectId: "waifei-db88d",
    storageBucket: "waifei-db88d.appspot.com",
    messagingSenderId: "15087496297",
    appId: "1:15087496297:web:f840d10ebcb2894648c6f8",
    measurementId: "G-704HNBHTD5"
  };

// Initialize Firebase
 firebase.initializeApp(firebaseConfig);

// firebase.auth().signInAnonymously()
//   .then(() => {
//     // Signed in..
//     window.console.log("OK");
//   })
//   .catch((error) => {
//     var errorCode = error.code;
//     var errorMessage = error.message;
//     window.console.log(errorCode);
//     window.console.log(errorMessage);
//     // ...
//   })