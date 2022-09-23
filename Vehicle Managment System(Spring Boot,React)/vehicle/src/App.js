import { Container } from "react-bootstrap";

import "./App.css";
import Navbar from "./Components/SmallComponents/navbar";
import Userloginpage from "./Components/pages/userloginpage";
import Slider from "./Components/SmallComponents/Slider";
import Adminloginpage from "./Components/pages/adminloginpage";
import { Routes, Route } from "react-router-dom";
import AddDriver from "./Components/SmallComponents/AddDriverComp";
import AdminPage from "./Components/pages/AdminPage";
import ASidebar from "./Components/SmallComponents/ASidebar";
import AddVehicle from "./Components/SmallComponents/AddVehicleComp";
import AllDriverList from "./Components/SmallComponents/AllDriverList";
import AllVehicleList from "./Components/SmallComponents/AllVehicleList";
import UserPage from "./Components/pages/UserPage";
import USidebar from "./Components/SmallComponents/usidebar";
import RideBook from "./Components/SmallComponents/RideBookForm";
import URideHistory from "./Components/pages/RideHistoryPage";
import UserHistory from "./Components/pages/UserHistory";
function App() {
  return (
    <div>
      <Navbar></Navbar>

      <div>
        <Routes>
          <Route
            path="/"
            element={
              <Container fluid className="box2">
                <Slider />
              </Container>
            }
          />
          <Route
            path="userlogin"
            element={
              <Container fluid className="box1">
                <Userloginpage />
              </Container>
            }
          />
           <Route
            path="user"
            element={
              <Container fluid className="box1">
                <UserPage/>
              </Container>
            }
          />
          <Route
            path="adminlogin"
            element={
              <Container fluid className="box1">
                <Adminloginpage />
              </Container>
            }
          />
          <Route
            path="admin"
            element={
              <Container fluid className="box1">
                <AdminPage />
              </Container>
            }
          />
          <Route
            path="addDriver"
            element={
              <Container fluid className="box1">
                <div className="cont">
                  <ASidebar />
                  <div className="box4">
                    <AddDriver />
                  </div>
                </div>
              </Container>
            }
          />
          <Route
            path="addVehicle"
            element={
              <Container fluid className="box1">
                <div className="cont">
                  <ASidebar />
                  <div className="box4">
                    <AddVehicle/>
                  </div>
                </div>
              </Container>
            }
          />
          <Route
            path="getAllDrivers"
            element={
              <Container fluid className="box1">
                <div className="cont">
                  <ASidebar />
                  <div className="boxlist">
                    <h3>All Drivers</h3>
                    <AllDriverList/>
                  </div>
                </div>
              </Container>
            }
          />
           <Route
            path="getAllVehicles"
            element={
              <Container fluid className="box1">
                <div className="cont">
                  <ASidebar />
                  <div className="boxlist">
                    <h3>All Vehicles</h3>
                    <AllVehicleList/>
                  </div>
                </div>
              </Container>
            }
          />
           <Route
            path="bookridepage"
            element={
              <Container fluid className="box1">
                <div className="cont">
                  <USidebar/>
                  <div className="boxlist2" >
                    <AllDriverList className="minbox" />
                    <AllVehicleList className="minbox"/>
                    <div>
                    <RideBook/>
                  </div>
                  </div>
                </div>
              </Container>
            }
          />
          <Route
            path="ridehistory"
            element={
              <Container fluid className="box1">
                <URideHistory/>
              </Container>
            }
          />
        <Route
            path="userhistory"
            element={
              <Container fluid className="box1">
                <UserHistory/>
              </Container>
            }
          />
        </Routes>
      </div>
    </div>
  );
}
export default App;
