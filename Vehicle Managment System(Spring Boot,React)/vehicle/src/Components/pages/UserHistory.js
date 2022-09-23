import { useLocation } from "react-router-dom";
import { useState } from "react";
function UserHistory(){
    const [allrides, setAllRides] = useState([]);
    const uallrides=[];
    const location = useLocation();
    const user =location.state;
    console.log("last"+user)
    fetch("http://localhost:8080/user/getAllRides")
    .then((res) => res.json())
    .then((result) => {
      setAllRides(result);
    });
    for(let i=0;i<allrides.length;i++){
        if(allrides[i].umail===user.umail){
            uallrides.push(allrides[i])
        }
    }
    let count = 0;

    return (
      <div className="l1">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">ride no</th>
              <th scope="col">user mail</th>
              <th scope="col">driver mail</th>
              <th scope="col">vehicle id</th>
              <th scope="col">from</th>
              <th scope="col">to</th>
              <th scope="col">cost</th>
            </tr>
          </thead>
          <tbody>
            {
              uallrides.map((row)=>(
                      <tr>
                      <th scope="row">{++count}</th>
                      <td>{row.umail}</td>
                      <td>{row.dmail}</td>
                      <td>{row.vid}</td>
                      <td>{row.fromlocation}</td>
                      <td>{row.tolocation}</td>
                      <td>{row.cost}</td>
                    </tr>  
              ))
  
            }
          </tbody>
        </table>
      </div>
    );
}
export default UserHistory;