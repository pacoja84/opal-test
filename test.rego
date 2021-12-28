package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow {
  [header, payload, signature] := io.jwt.decode(input.attributes.request.http.headers.token)
  payload.Signum == "ejimema"
}