//
//  OpenVPNProviderError.swift
//  TunnelKit
//
//  Created by Davide De Rosa on 11/8/21.
//  Copyright (c) 2023 Davide De Rosa. All rights reserved.
//
//  https://github.com/passepartoutvpn
//
//  This file is part of TunnelKit.
//
//  TunnelKit is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  TunnelKit is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with TunnelKit.  If not, see <http://www.gnu.org/licenses/>.
//
//  This file incorporates work covered by the following copyright and
//  permission notice:
//
//      Copyright (c) 2018-Present Private Internet Access
//
//      Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//      The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//
//      THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation

/// Mostly programming errors by host app.
public enum OpenVPNProviderConfigurationError: Error {

    /// A field in the `OpenVPNProvider.Configuration` provided is incorrect or incomplete.
    case parameter(name: String)

    /// Credentials are missing or inaccessible.
    case credentials(details: String)

    /// The pseudo-random number generator could not be initialized.
    case prngInitialization

    /// The TLS certificate could not be serialized.
    case certificateSerialization
}

/// The errors causing a tunnel disconnection.
public enum OpenVPNProviderError: String, Error {

    /// Socket endpoint could not be resolved.
    case dnsFailure

    /// No more endpoints available to try.
    case exhaustedEndpoints

    /// Socket failed to reach active state.
    case socketActivity

    /// Credentials authentication failed.
    case authentication

    /// TLS could not be initialized (e.g. malformed CA or client PEMs).
    case tlsInitialization

    /// TLS server verification failed.
    case tlsServerVerification

    /// TLS handshake failed.
    case tlsHandshake

    /// The encryption logic could not be initialized (e.g. PRNG, algorithms).
    case encryptionInitialization

    /// Data encryption/decryption failed.
    case encryptionData

    /// The LZO engine failed.
    case lzo

    /// Server uses an unsupported compression algorithm.
    case serverCompression

    /// Tunnel timed out.
    case timeout

    /// An error occurred at the link level.
    case linkError

    /// Network routing information is missing or incomplete.
    case routing

    /// The current network changed (e.g. switched from WiFi to data connection).
    case networkChanged

    /// Default gateway could not be attained.
    case gatewayUnattainable

    /// Remove server has shut down.
    case serverShutdown

    /// The server replied in an unexpected way.
    case unexpectedReply
    
    //MARK: JHPark added PNS Tunnel Error Type
    /// PNS Error OTP AuthCode 25
    case otpFail
    
    /// PNS Error FIDO Failed AuthCode 41
    case fidoFail
    
    /// PNS Error Aerox Failed AuthCode 44
    case aeroxFail
    
    /// PNS UnExcpeted Error AuthCode Default
    case unExpected
    
    /// PNS 인가된 단말이 아닙니다
    case deviceFail
    
    /// PNS 서버가 응답하지 않습니다
    case noServerResponse
    
    /// PNS 없는 사용자 아이디입니다.
    case noUserId
    
    /// PNS 비밀번호 인증에 실패하였습니다(%d회)
    case failpassword
    
    /// PNS 사용자 계정이 잠겨있습니다
    case accountLock
    
    /// PNS  계정 유효기간이 만료되었습니다
    case accountExpire
    
    /// PNS 접속가능한 IP가 아닙니다
    case ipFail
    
    /// PNS VPN 사용 가능 시간대가 아닙니다.
    case timeFail
    
    /// PNS RADIUS 인증 실패
    case radiusFail
    
    /// PNS RADIUS 서버가 응답하지 않습니다
    case radiusNoResp
    
    /// PNS LDAP 서버 접속 실패
    case ldapFail
    
    /// PNS LDAP 인증 실패
    case ldapAuthFail
    
    /// PNS 서버가 더이상 IP를 할당할 수 없습니다.
    case noMoreIp
    
    /// PNS 현재 정책과 일치하지 않는 로그인 시도입니다
    case invalidPolicy
    
    ///  PNS 사용자가 너무 많아 접속할 수 없습니다
    case userLimit
    
    /// PNS 인증서가 만료되었습니다
    case certExpire
    
    /// PNS 신뢰할 수 없는 인증서입니다
    case invalidCert
    
    /// PNS 프로파일이 없습니다
    case noProfile
    
    /// PNS 암호가 만료되었습니다
    case expirePassword
    
    /// PNS 사용 중지된 단말입니다
    case deviceBanned
    
}
