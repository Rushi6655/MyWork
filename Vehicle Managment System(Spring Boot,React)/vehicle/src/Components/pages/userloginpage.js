import Button from "react-bootstrap/Button";
import Form from "react-bootstrap/Form";

import { useNavigate } from "react-router-dom";
import { useState, useEffect } from "react";
function Userloginpage() {
  const [mail, setMail] = useState();
  const [pass, setPass] = useState();
  const [name, setName] = useState("");
  const [users, setUsers] = useState([]);
  let userdata;
  const navigate = useNavigate();

  useEffect((e)=>{
    fetch("http://localhost:8080/user/val")
    .then((res) => res.json())
    .then((result) => {
      setUsers(result);
    });
  },[]);

  function ValidateUser(event) {
     event.preventDefault();
    console.log(users);
    let sts;
    for (let i = 0; i < users.length; i++){
      console.log(users[i].umail+users[i].upass+mail+pass)
      if (users[i].umail.localeCompare(mail)===0 && users[i].upass.localeCompare(pass)===0) {
        sts='val';
        console.log(sts);
        userdata = {
          umail: users[i].umail,
          upass: users[i].upass,
          uname: users[i].uname
        };
        break;
      } else if (users[i].umail.localeCompare(mail)===0 && users[i].upass.localeCompare(pass)===-1) {
        sts = 'wp';
      } else {
        sts = 'error';
      }
    }
    if (sts === 'val') {
      alert("login successfull");
      navigate("/user", { state: userdata });
    } else if (sts === 'wp') {
      alert("Wrong Password");
    } else {
      alert("user not found !kindly signup");
    }
  }


  function Signup(event) {
    const user = {
      umail: mail,
      uname: name,
      upass: pass,
    };
    fetch("http://localhost:8080/user/signUp", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(user),
    }).then(() => {
      alert("Sign Up Successfull!");
    });
  }
  return (
    <div className="box2">
      <h1 className="heading">USER LOGIN</h1>
      <div className="box2">
        <Form>
          <Form.Group className="mb-3" controlId="formBasicEmail">
            <Form.Group className="mb-3" controlId="formBasicPassword">
              <Form.Label>User Name</Form.Label>
              <Form.Control
                type="text"
                placeholder="User Name"
                value={name}
                onChange={(e) => {
                  e.preventDefault();
                  setName(e.target.value);
                }}
              />
            </Form.Group>
            <Form.Label>Email address</Form.Label>
            <Form.Control
              type="email"
              placeholder="Enter email"
              value={mail}
              onChange={(e) => {
                e.preventDefault();
                setMail(e.target.value);
              }}
            />
            <Form.Text className="text-muted">
              We'll never share your email with anyone else.
            </Form.Text>
          </Form.Group>

          <Form.Group className="mb-3" controlId="formBasicPassword">
            <Form.Label>Password</Form.Label>
            <Form.Control
              type="password"
              placeholder="Password"
              value={pass}
              onChange={(e) => {
                e.preventDefault();
                setPass(e.target.value);
              }}
            />
          </Form.Group>
          <Button variant="primary" onClick={Signup}>
            SignUp
          </Button>
          <Button variant="primary" onClick={ValidateUser}>
            logIn
          </Button>
        </Form>
      </div>
    </div>
  );
}
export default Userloginpage;
