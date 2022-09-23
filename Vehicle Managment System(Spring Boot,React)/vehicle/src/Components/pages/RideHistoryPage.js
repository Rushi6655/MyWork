import { useState } from "react";
import './Page.css';
function URideHistory() {
  const [allrides, setAllRides] = useState([]);

  fetch("http://localhost:8080/user/getAllRides")
  .then((res) => res.json())
  .then((result) => {
    setAllRides(result);
  });
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
            allrides.map((row)=>(
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
export default URideHistory;
