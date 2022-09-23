import { Button } from "react-bootstrap"
import { Link, useLinkClickHandler } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import { useEffect } from "react";
import './component.css';
function UserButtons(props){
    let use=0;
    const navigate=useNavigate();
    console.log(props.u)
    const Use=(e)=>{
        navigate("/userhistory" ,{state: props.u});
    };
    return(
        <div className="ubuttons">
             <h3 className="heading">WELCOME USER</h3>
             <Button variant="primary" className="m-1 w-100"><Link to="/bookridepage" className="link">Book A Ride</Link></Button>
             <Button variant="primary" className="m-1 w-100" onClick={Use}>Ride History</Button>
        </div>
    )
}
export default UserButtons;