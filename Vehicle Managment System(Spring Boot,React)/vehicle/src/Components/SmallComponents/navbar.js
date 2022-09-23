import React from "react";
import './component.css';
import {Navbar,Container,Nav} from 'react-bootstrap'
import { Link } from "react-router-dom";
function navbar(){
    return (
        <Navbar bg="primary" variant="dark">
        <Container>
          <Navbar.Brand href="#home">Navbar</Navbar.Brand>
          <Nav className="me-auto">
            <Nav.Link ><Link to='/' className="link">Home</Link></Nav.Link>
            <Nav.Link ><Link to='/userlogin'className="link">UserLogin</Link> </Nav.Link>
            <Nav.Link ><Link to='/adminlogin'className="link">AdminLogin</Link> </Nav.Link>
          </Nav>
        </Container>
      </Navbar>
    )
}
export default navbar;
