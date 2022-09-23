import Toast from 'react-bootstrap/Toast';
import './component.css';
import UserButtons from './UserButtons';
function USidebar(props) {
  let user=props.userdata;
  console.log("sidebar"+user)
  return (
    <Toast  className='tost'>
      <Toast.Body>
        <UserButtons u={user} />
      </Toast.Body>
    </Toast>
  );
}

export default USidebar;