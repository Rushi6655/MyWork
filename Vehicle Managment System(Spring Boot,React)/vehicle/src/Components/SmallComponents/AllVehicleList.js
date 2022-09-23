import {useState,useEffect} from 'react'
function AllVehicleList() {
  const[vehicles,setVehicles]=useState([]);
  
useEffect(()=>{
    fetch("http://localhost:8080/admin/getAllVehicles")
    .then(res=>res.json())
    .then((result)=>{setVehicles(result)})
},[])

  return (
    <div className='listbox'>
      <table class="table">
        <thead>
          <tr>
            <th scope="col"> vehicle id</th>
            <th scope="col">Name</th>
            <th scope="col">Cost Per Km</th>
          </tr>
        </thead>
        <tbody>
          {vehicles.map((row)=>(
               <tr>
               <th scope="row">{row.vid}</th>
               <td>{row.vname}</td>
               <td>{row.cpkm} </td>
             </tr>
          ))}
         
        </tbody>
      </table>
    </div>
  );
}
export default AllVehicleList;
