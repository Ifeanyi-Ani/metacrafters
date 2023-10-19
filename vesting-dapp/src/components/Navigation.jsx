import { NavLink } from 'react-router-dom';

const Navigation = () => {
  return (
    <div className="">
      <ul>
        <li>
          <NavLink to="/">Dashboard</NavLink>
        </li>
        <li>
          <NavLink to="/organizations">Organizations</NavLink>
        </li>
        <li>
          <NavLink to="/stakholders">Stakeholders</NavLink>
        </li>
        <li>
          <NavLink role="button">Create</NavLink>
        </li>
        <li>
          <NavLink role="button">Register</NavLink>
        </li>
      </ul>
    </div>
  );
};

export default Navigation;
