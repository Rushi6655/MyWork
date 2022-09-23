import ReactDOM  from "react-dom";
import React, {useState} from "react";
import App from './App.js';
import {BrowserRouter} from 'react-router-dom';

import '../node_modules/react-bootstrap/dist/react-bootstrap';
import '../node_modules/bootstrap/dist/css/bootstrap.css';
ReactDOM.render(
    <BrowserRouter>
    <App/>
    </BrowserRouter>,document.getElementById('root')
)