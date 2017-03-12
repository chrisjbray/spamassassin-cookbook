# encoding: UTF-8
#
# Author:: Xabier de Zuazo (<xabier@zuazo.org>)
# Copyright:: Copyright (c) 2017 Xabier de Zuazo
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require_relative '../spec_helper'
require 'conf'

describe SpamAssassinCookbook::Conf, order: :random do
  subject { SpamAssassinCookbook::Conf }

  describe '.value' do
    {
      true => '1',
      false => '0',
      '1' => '1',
      '0' => '0',
      1 => '1',
      0 => '0'
    }.each do |value, result|
      it "returns #{result.inspect} for #{value.inspect}" do
        expect(subject.value(value)).to eq(result)
      end
    end
  end # .value
end
