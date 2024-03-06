<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="TempSense" generation="1" functional="0" release="0" Id="816005c0-e701-4a60-848b-fe2f0c031c70" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="TempSenseGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="TempSenseWebService:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/TempSense/TempSenseGroup/LB:TempSenseWebService:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="TempSenseWebService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/TempSense/TempSenseGroup/MapTempSenseWebService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="TempSenseWebServiceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/TempSense/TempSenseGroup/MapTempSenseWebServiceInstances" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/TempSense/TempSenseGroup/MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WorkerRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/TempSense/TempSenseGroup/MapWorkerRole1Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:TempSenseWebService:Endpoint1">
          <toPorts>
            <inPortMoniker name="/TempSense/TempSenseGroup/TempSenseWebService/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapTempSenseWebService:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/TempSense/TempSenseGroup/TempSenseWebService/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapTempSenseWebServiceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/TempSense/TempSenseGroup/TempSenseWebServiceInstances" />
          </setting>
        </map>
        <map name="MapWorkerRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/TempSense/TempSenseGroup/WorkerRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWorkerRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/TempSense/TempSenseGroup/WorkerRole1Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="TempSenseWebService" generation="1" functional="0" release="0" software="C:\Users\samza\Dropbox\SZ_Work\SZ_CSUN\comp589\Comp589TempSense\TempSense\TempSense\csx\Release\roles\TempSenseWebService" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;TempSenseWebService&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;TempSenseWebService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/TempSense/TempSenseGroup/TempSenseWebServiceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/TempSense/TempSenseGroup/TempSenseWebServiceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/TempSense/TempSenseGroup/TempSenseWebServiceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="WorkerRole1" generation="1" functional="0" release="0" software="C:\Users\samza\Dropbox\SZ_Work\SZ_CSUN\comp589\Comp589TempSense\TempSense\TempSense\csx\Release\roles\WorkerRole1" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WorkerRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;TempSenseWebService&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;WorkerRole1&quot; /&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/TempSense/TempSenseGroup/WorkerRole1Instances" />
            <sCSPolicyUpdateDomainMoniker name="/TempSense/TempSenseGroup/WorkerRole1UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/TempSense/TempSenseGroup/WorkerRole1FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="TempSenseWebServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="WorkerRole1UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="TempSenseWebServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="WorkerRole1FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="TempSenseWebServiceInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="WorkerRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="53cde711-6c34-4d4b-89ac-5a9b3d71bba5" ref="Microsoft.RedDog.Contract\ServiceContract\TempSenseContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="ca7f934c-e842-4b4f-a96f-2e3026b6fa7b" ref="Microsoft.RedDog.Contract\Interface\TempSenseWebService:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/TempSense/TempSenseGroup/TempSenseWebService:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>