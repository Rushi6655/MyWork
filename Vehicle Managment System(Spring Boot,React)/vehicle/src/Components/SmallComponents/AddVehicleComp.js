import { useState } from "react";

const AddVehicle = () => {
  const [vid, setVid] = useState();
  const [vname, setVname] = useState("");
  const [cpkm, setCpkm] = useState();

  const Add = (e) => {
    e.preventDefault();
    const vehicle = {
      "vid":vid,
      "vname":vname,
      "cpkm":cpkm};
      console.log(vehicle)
    fetch("http://localhost:8080/admin/addVehicle", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(vehicle),
    }).then(() => {
      alert("Vehicle Added Successfully");
    });
  };
  return (
    <div>
      <form>
        <div className="mb-3">
          <label for="formGroupExampleInput" className="form-label">
            Vehicle id
          </label>
          <input
            type="number"
            className="form-control"
            id="formGroupExampleInput"
            placeholder="Example input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setVid(event.target.value);
            }}
          />
        </div>
        <div className="mb-3">
          <label for="formGroupExampleInput" className="form-label">
            Vehicle Name
          </label>
          <input
            type="text"
            className="form-control"
            id="formGroupExampleInput"
            placeholder="Example input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setVname(event.target.value);
            }}
          />
        </div>
        <div class="mb-3">
          <label for="formGroupExampleInput2" className="form-label">
            Cost Per Km
          </label>
          <input
            type="number"
            className="form-control"
            id="formGroupExampleInput2"
            placeholder="Another input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setCpkm(event.target.value);
            }}
          />
        </div>
        <button className="btn btn-primary" onClick={Add}>
          Add Vehicle
        </button>
      </form>
    </div>
  );
};
export default AddVehicle;
