require_relative 'request'

app_id = '100'
public_key = 'abc123'
private_key = 'foobar'

message = {
  audience: {
    type: 'segmentId',
    values: ['everyone']
  },
  message: {
    text: 'Map test!'
  },
  callbackUrl: 'http://admin-3-1:4567/callback',
  countTowardsRateLimiting: false,
  applyGlobalRateLimits: false,
  campaignId: 'some-id-optional'
}

###########################################
# You shouldn't need to modify below here #
###########################################
Request.new(public_key, private_key).make_request(app_id, message)
