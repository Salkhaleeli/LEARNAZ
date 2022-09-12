// import { Card } from '@mui/material';
import React, { useEffect } from 'react'
import { useParams } from 'react-router-dom'
import axios from 'axios'
import Steptracker from './Steptracker';
import { Link } from "react-router-dom";
import '../styles/course-details.css';


export default function CourseDetails(props) {
  const { name } = useParams()
  // const [edit, setEdit] = useState();
  // const [step, setStep] = useState();

  useEffect(() => {
    axios.get(`/resources/${name}`)
      .then(res => {
        props.setResources(res.data)
      })
  }, [])

  const handleDelete = (id) => {
    // setStep()
    axios.delete(`/resources/${id}`)
      .then(() => {
        props.setResources(props.resources.filter((resource) => {
          return resource.id !== id;
        }))
      })
  }

  const newResources = props.resources.map((resource) => {
    const pathToResourceEdit = `/edit-resource/${resource.id}`;
    return (
      <div className="card-body" key={resource.id}>
        <div class="number-description">
        <div>{resource.step_number}</div>
        <h5 className="card-title">{resource.step_description}</h5>
        </div>

        <div class="article">
        <a href={resource.article_url} className="card-text" target="_blank">Click Article</a>
        </div>

        <div class="image-video">
        <div>
          <iframe width="750" height="500" title="myFrame" src={resource.video_url}></iframe>
        </div>
        <div>
          <img src={resource.photo_url} alt='' />
        </div>
        </div>

        <Steptracker resource_id={resource.id} />
        <div className='admin-form'>
          {props.admin &&
            <div>
              <div className='edit'>
                <Link to={pathToResourceEdit}>
                  <button className="btn btn-primary">Edit</button>
                </Link>
              </div>
              <div className='delete'>
                <button onClick={() => handleDelete(resource.id)} className="btn btn-primary">Delete</button>
              </div>
            </div>
          }
        </div>
      </div>
    )
  })

  return (
    <div>
      <div>
        {newResources}
      </div>
      {props.admin &&
        <div>
          <Link to='/create-course'>
            <button type='button' className='btn btn-primary'>Add Resources</button>
          </Link>
        </div>
      }
    </div>
  )
}



