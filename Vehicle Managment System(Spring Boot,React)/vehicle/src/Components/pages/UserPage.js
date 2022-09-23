import { useLocation } from "react-router-dom";
import "./Page.css";
import Usidebar from '../SmallComponents/usidebar';
function UserPage() {
  const location = useLocation();
  let user=location.state;
  console.log("adminpage"+user)
  return (
    <div >
      <Usidebar userdata={user} />
    </div>
  );
}
export default UserPage;
