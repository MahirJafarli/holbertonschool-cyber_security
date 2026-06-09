# Passive Reconnaissance Report: holbertonschool.com
**Target Domain:** holbertonschool.com  
**Source Platform:** Shodan Intelligence Platform  
**Report Date:** June 2026

---

## 1. Executive Summary
This report aggregates infrastructure exposure data for the domain `holbertonschool.com` using passive reconnaissance information provided by Shodan. No active scanning or direct interactions were performed against the target infrastructure. 

The investigation successfully mapped active public IP spaces within the Amazon Web Services (AWS) ecosystem, identified exposed subdomains, analyzed operating systems, and cataloged web server engines alongside their specific software versions and underlying framework structures.

---

## 2. IP Address Footprint & Networks
Passive mapping via Shodan exposes two primary destination hosts acting as gateways or origin servers for the target domain's web properties. Both assets are geographically clustered in France.

### Public IPv4 Infrastructure

| IP Address | Domain / Hostname Mapping | Cloud Provider | ASN / Network Owner | Geographic Location |
| :--- | :--- | :--- | :--- | :--- |
| **52.47.143.83** | `yriry2.holbertonschool.com`<br>`ec2-52-47-143-83.eu-west-3.compute.amazonaws.com` | Amazon (EC2) | AS16509 (Amazon Data Services France) | Paris, France |
| **35.180.27.154** | `holbertonschool.com` (Redirect destination)<br>`ec2-35-180-27-154.eu-west-3.compute.amazonaws.com` | Amazon (EC2) | AS16509 (Amazon Data Services France) | Paris, France |

---

## 3. Technologies & Frameworks Found
Banner tracking and HTTP response header analysis reveal a distinct technology stack layout optimized for web infrastructure and forum hosting.

### Operating Systems
* **Ubuntu Linux**: Identified specifically on the `35.180.27.154` host as the base operating system platform.

### Web Server & Reverse Proxy Software
* **Nginx 1.21.6**: Powers the front-end reverse proxy mapping for `yriry2.holbertonschool.com`. It handles TLS terminations and handles upstream application routing via Ports 80 and 443.
* **Nginx 1.18.0 (Ubuntu)**: Running on the apex server (`35.180.27.154`), configured primarily to serve HTTP 301 permanent redirects forcing traffic over to secure layers.

### Web Applications & Underlying Frameworks
* **Discourse Forum Framework**: Identified explicitly via security headers (`X-Discourse-Route: static/show`, `X-Discourse-TrackView: 1`). This software stack drives the application portal serving the **"Holberton School Level2 Forum"** web community interface on the `yriry2` subdomain.
* **Google Analytics**: JavaScript tracking elements (`analytics.js`) are integrated within the global front-end template footprint.

---

## 4. Passive Vulnerability Assessment (Inferred)
Based solely on the software versions captured by Shodan, the exposed service engines show potential susceptibility to known vulnerabilities.

### Nginx Deployment Vulnerabilities
* **CVE-2023-44487 (CVSS 7.5)**: Rapid stream reset vulnerabilities affecting HTTP/2 configuration options on both Nginx 1.18.0 and 1.21.6 setups, potentially allowing malicious resource exhaustion.
* **CVE-2021-23017 (CVSS 7.7)**: Specific to the Nginx 1.18.0 implementation on `35.180.27.154`, a 1-byte memory overwrite flaw exists inside the core DNS resolver module.
* **CVE-2025-23419 (CVSS 5.3)**: Minor exposure relating to TLS Session Ticket configurations across multi-tenant server blocks, potentially impacting client certificate validations if improperly segmented.
