import { useState } from "react";
function RideBookForm() {
  const [umail, setUmail] = useState("");
  const [dmail, setDmail] = useState("");
  const [vid, setVid] = useState();
  const [location, setLocation] = useState("");
  const [destination, setDestination] = useState("");
  const [km, setKm] = useState();
  const [vehicles, setVehicles] = useState();
  const [cost, setCost] = useState();
  function BookRideF() {
    let total=cost*km;
    let rs = window.confirm("Ride Cost Would Be" + total);
    if (rs === true) {
      let ride = {
        umail: umail,
        dmail: dmail,
        vid: vid,
        fromlocation: location,
        tolocation: destination,
        travelkm: km,
        cost: total,
      };
      console.log(ride);
      fetch("http://localhost:8080/user/bookRide", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(ride),
      }).then(() => {
        alert("Ride Booked Successfully!");
      });
    }
  }

  return (
    <div>
      <form className="bookform">
        <div>
          <div className="mb-3">
            <label for="exampleInputEmail1" className="form-label">
              Your Mail Id
            </label>
            <input
              type="email"
              className="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              onChange={(e) => {
                setUmail(e.target.value);
              }}
            />
          </div>

          <div className="mb-3">
            <label for="exampleInputEmail1" className="form-label">
              Driver Mail Id
            </label>
            <input
              type="email"
              className="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              onChange={(e) => {
                setDmail(e.target.value);
              }}
            />
          </div>
        </div>
        <div>
          <div className="mb-3">
            <label for="exampleInputEmail1" className="form-label">
              Vehicle Id
            </label>
            <input
              type="number"
              className="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              onChange={(e) => {
                setVid(e.target.value);
              }}
            />
          </div>

          <div className="mb-3">
            <label for="exampleInputPassword1" className="form-label">
              Current Location
            </label>
            <input
              type="text"
              className="form-control"
              id="exampleInputPassword1"
              onChange={(e) => {
                setLocation(e.target.value);
              }}
            />
          </div>
        </div>
        <div>
          <div className="mb-3">
            <label for="exampleInputPassword1" className="form-label">
              Destination Location
            </label>
            <input
              type="text"
              className="form-control"
              id="exampleInputPassword1"
              onChange={(e) => {
                setDestination(e.target.value);
              }}
            />
          </div>

          <div className="mb-3">
            <label for="exampleInputPassword1" className="form-label">
              Km ,Want to travel
            </label>
            <input
              type="number"
              className="form-control"
              id="exampleInputPassword1"
              onChange={(e) => {
                setKm(e.target.value);
              }}
            />
          </div>
        </div>
        <div>
          <div className="mb-3">
            <label for="exampleInputPassword1" className="form-label">
              Enter Cost Per Km of vehicle
            </label>
            <input
              type="number"
              className="form-control"
              id="exampleInputPassword1"
              onChange={(e) => {
                setCost(e.target.value);
              }}
            />
          </div>
           <div className="mb-3">
           <label for="exampleInputEmail1" className="form-label">
            </label>
           <button className="btn btn-primary m-2" onClick={BookRideF}>
            Submit
          </button>
           </div>
        </div>
      </form>
    </div>
  );
}
export default RideBookForm;
