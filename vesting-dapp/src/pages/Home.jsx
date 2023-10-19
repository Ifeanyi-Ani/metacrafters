import { Link } from 'react-router-dom';
const Home = () => {
  return (
    <div>
      <div>
        <Link to="/#">
          <div>
            <div>length</div>
            <div>Products</div>
          </div>
        </Link>
        <Link to="/#">
          <div>
            <div>length</div>
            <div>Stakeholders`</div>
          </div>
        </Link>
      </div>

      <div className="dashDtx">
        <div className="recentOders">
          <div>
            <h2>Recent Organizations</h2>
            <Link to="/#">View All</Link>
          </div>
          <table>
            <thead>
              <tr>
                <td>S/N</td>
                <td>Name</td>
                <td>Address</td>
                <td>
                  Token <br /> (bal)
                </td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>S/N</td>
                <td>Name</td>
                <td>Address</td>
                <td>
                  Token <br /> (bal)
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div className="recentCus">
          <div>
            <h2>Recent Stakeholders</h2>
          </div>
          <table>
            <tbody>
              <tr>
                <td>
                  <h4>
                    address <br /> name
                  </h4>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
};

export default Home;
