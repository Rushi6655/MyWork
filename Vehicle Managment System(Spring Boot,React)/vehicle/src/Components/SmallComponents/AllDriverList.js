import {useState,useEffect} from 'react'
function AllDriverList() {
  const[drivers,setDrivers]=useState([]);
  
useEffect(()=>{
    fetch("http://localhost:8080/admin/getAllDrivers")
    .then(res=>res.json())
    .then((result)=>{setDrivers(result)})
},[])

  return (
    <div className='listbox'>
      <table class="table">
        <thead>
          <tr>
            <th scope="col"> Driver Mail</th>
            <th scope="col">Name</th>
            <th scope="col">Experience</th>
            <th scope="col">Age</th>
          </tr>
        </thead>
        <tbody>
          {drivers.map((row)=>(
               <tr>
               <th scope="row">{row.dmail}</th>
               <td>{row.dname}</td>
               <td>{row.dexp}</td>
               <td>{row.dage}</td>
             </tr>
          ))}
         
        </tbody>
      </table>
    </div>
  );
}
export default AllDriverList;
