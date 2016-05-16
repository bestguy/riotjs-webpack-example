import xhttp from 'xhttp';

<meet>
  <a href="{join}" target="_blank">
    <img src={url}
         width="{this.opts.size || 200}"
         height="{this.opts.size || 200}">
    <h3>{name}</h3>
  </a>

  <style>
    meet {
      display: inline-block;
      padding: 1em;
      text-align: center;
    }
    meet img {
      background-color: rgb(211, 211, 211);
      border: 5px solid rgb(255, 255, 255);
      border-radius: 100%;
      box-shadow: rgba(0, 0, 0, 0.5) 0px 3px 7px;
      margin: auto;
    }
  </style>

  <script>
    this.name = this.opts.me;
    // Default URL if api fails:
    this.join = `https://gotomeet.me/${this.opts.me}`;
    // Default avatar if api fails:
    this.url = `https://cdn.gotomeet.at/images/web-portal/gotomeet/avatar.png`;

    xhttp({method: 'get', url: `https://crossorigin.me/https://gotomeet.me/api/profiles/${this.opts.me}`})
      .then(profile => {
        this.name = profile.name || profile.profileId;
        // Uses CDN for faster avatar loading:
        this.url = profile.avatarUrl.replace('www.filepicker.io', 'd1ho4l1jd34cw6.cloudfront.net');
        this.join = `https://app.gotomeeting.com/index.html?meetingid=${profile.meetingId}`;
        this.update();
      })
      .catch(err => console.error(err));
  </script>
</meet>
