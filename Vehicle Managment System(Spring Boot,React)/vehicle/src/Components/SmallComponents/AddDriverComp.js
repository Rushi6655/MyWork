import { useState } from "react";

const AddDriver = () => {
  const [name, setName] = useState("");
  const [exp, setExp] = useState();
  const [age, setAge] = useState();
  const [mail, setMail] = useState();

  const Add = (e) => {
    e.preventDefault();
    const driver = {
      "dmail":mail,
      "dname":name,
      "dexp":exp,
      "dage":age};
      console.log(driver)
    fetch("http://localhost:8080/admin/addDriver", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(driver),
    }).then(() => {
      alert("Student Added Successfully");
    });
  };
  return (
    <div>
      <form>
        <div className="mb-3">
          <label for="formGroupExampleInput" className="form-label">
            Driver Name
          </label>
          <input
            type="text"
            className="form-control"
            id="formGroupExampleInput"
            placeholder="Example input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setName(event.target.value);
            }}
          />
        </div>
        <div className="mb-3">
          <label for="formGroupExampleInput" className="form-label">
            Driver Mail
          </label>
          <input
            type="email"
            className="form-control"
            id="formGroupExampleInput"
            placeholder="Example input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setMail(event.target.value);
            }}
          />
        </div>
        <div class="mb-3">
          <label for="formGroupExampleInput2" className="form-label">
            Driver Experience
          </label>
          <input
            type="number"
            className="form-control"
            id="formGroupExampleInput2"
            placeholder="Another input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setExp(event.target.value);
            }}
          />
        </div>
        <div class="mb-3">
          <label for="formGroupExampleInput2" className="form-label">
            Driver Age
          </label>
          <input
            type="number"
            className="form-control"
            id="formGroupExampleInput2"
            placeholder="Another input placeholder"
            onChange={(event) => {
              event.preventDefault();
              setAge(event.target.value);
            }}
          />
        </div>
        <button className="btn btn-primary" onClick={Add}>
          Add Driver
        </button>
      </form>
    </div>
  );
};
export default AddDriver;
