// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyCta4UIQ9bNgsywFf_x9c3NvsevYKt3b5w",
  authDomain: "uncharted-42fa5.firebaseapp.com",
  projectId: "uncharted-42fa5",
  storageBucket: "uncharted-42fa5.firebasestorage.app",
  messagingSenderId: "652310072322",
  appId: "1:652310072322:web:14ff0c47895c05f81d2b1b",
  measurementId: "G-REX2K4ZSWY"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);