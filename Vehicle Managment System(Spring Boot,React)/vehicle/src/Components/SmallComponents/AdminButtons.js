import { Button } from "react-bootstrap"
import './component.css';
import { Link } from "react-router-dom";
function AdminButtons(){
    
    return(
        <div className="ubuttons">
             <h3 className="heading">WELCOME ADMIN</h3>
             <Button variant="primary" className="m-1 w-100"><Link to="/addDriver" className="link">Add Driver</Link></Button>
             <Button variant="primary" className="m-1 w-100"><Link to="/addVehicle" className="link">Add Vehicle</Link> </Button>
             <Button variant="primary" className="m-1 w-100"><Link to="/ridehistory" className="link">Ride History</Link></Button>
             <Button variant="primary" className="m-1 w-100"><Link to="/getAllDrivers" className="link">All Drivers</Link> </Button>
             <Button variant="primary" className="m-1 w-100"><Link to="/getAllVehicles" className="link">All Vehicles</Link></Button>
        </div>
    )
}
export default AdminButtons;