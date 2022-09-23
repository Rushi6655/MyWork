import { useState } from "react";

import { useNavigate } from "react-router-dom";

const Adminloginpage = () => {
  const [mail, setMail] = useState("");
  const [pass, setPass] = useState("");

  function onChangeHandlerMail(event) {
    event.preventDefault();
    setMail(event.target.value);
  }
  function onChangeHandlerPass(event) {
    event.preventDefault();
    setPass(event.target.value);
  }
  const navigate = useNavigate();
  function ValidateAdmin() {
    if (mail === "admin@mail.com") {
      if (pass === "admin") {

        navigate("/admin" ,{state:"Rushi"});
        alert("Successfully Login");
      } else {
        alert("Invalid Password!");
      }
    } else {
      alert("Invalid Mail!");
    }
  }

  return (
    <div className="box2">
      <h1 className="heading">ADMIN LOGIN</h1>
      <div className="box2">
        <form>
          <div className="mb-3">
            <label for="exampleInputEmail1" class="form-label">
              Email address
            </label>
            <input
              type="email"
              className="form-control"
              id="exampleInputEmail1"
              aria-describedby="emailHelp"
              onChange={onChangeHandlerMail}
            />
            <div id="emailHelp" className="form-text">
              We'll never share your email with anyone else.
            </div>
          </div>
          <div className="mb-3">
            <label for="exampleInputPassword1" class="form-label">
              Password
            </label>
            <input
              type="password"
              className="form-control"
              id="exampleInputPassword1"
              onChange={onChangeHandlerPass}
            />
          </div>
          <button className="btn btn-primary" onClick={ValidateAdmin}>
            Submit
          </button>
        </form>
      </div>
    </div>
  );
};
export default Adminloginpage;
