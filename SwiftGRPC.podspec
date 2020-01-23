# Copyright 2018, gRPC Authors. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Pod::Spec.new do |s|
  s.name = 'SwiftGRPC'
  s.version = '1.0.0'
  s.license     = { :type => 'Apache License, Version 2.0',
                    :text => <<-LICENSE
                      Copyright 2018, gRPC Authors. All rights reserved.
                      Licensed under the Apache License, Version 2.0 (the "License");
                      you may not use this file except in compliance with the License.
                      You may obtain a copy of the License at
                        http://www.apache.org/licenses/LICENSE-2.0
                      Unless required by applicable law or agreed to in writing, software
                      distributed under the License is distributed on an "AS IS" BASIS,
                      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                      See the License for the specific language governing permissions and
                      limitations under the License.
                    LICENSE
                  }

  s.summary = 'Swift gRPC code generator plugin and runtime library'
  s.homepage = 'https://www.grpc.io'
  s.authors  = { 'The gRPC contributors' => 'grpc-packages@google.com' }
  s.source = { :git => 'https://github.com/sftnhrd/grpc-swift.git', :branch => 'nio' }

  s.swift_versions = ['5']
  s.requires_arc = true
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'

  s.source_files = 'Sources/GRPC/**/*.swift'

  s.dependency 'SwiftNIO', '~> 2.11.0'
  s.dependency 'SwiftNIOHTTP1', '~> 2.11.0'
  s.dependency 'SwiftNIOHTTP2', '~> 1.8.0'
  s.dependency 'SwiftNIOHPACK', '~> 1.8.0'
  s.dependency 'Logging', '~> 1.2.0'
  s.dependency 'SwiftProtobuf', '~> 1.7.0'

end
