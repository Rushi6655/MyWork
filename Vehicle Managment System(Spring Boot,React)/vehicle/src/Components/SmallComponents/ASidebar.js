import Toast from 'react-bootstrap/Toast';
import './component.css';
import AdminButtons from './AdminButtons';
function ASidebar() {
  return (
    <Toast  className='tost'>
      <Toast.Body>
        <AdminButtons/>
      </Toast.Body>
    </Toast>
  );
}

export default ASidebar;