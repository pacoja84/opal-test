package envoy.authz

import input.attributes.request.http as http_request


allow {
  [header, payload, signature] := io.jwt.decode(input.attributes.request.http.headers.token)
  payload.Signum == "efrrpez"
}
