import { useLocation } from "react-router-dom";
import "./Page.css";
import ASidebar from "../SmallComponents/ASidebar";
function AdminPage() {
  const location = useLocation();
  console.log(location.state);
  return (
    <div >
      <ASidebar />
    </div>
  );
}
export default AdminPage;
