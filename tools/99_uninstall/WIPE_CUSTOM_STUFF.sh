echo "*****************************************************************************************************************************"
echo " ✅ WIPE REMAINING AIOPS STUFF"
echo "*****************************************************************************************************************************"
echo ""
echo "  ⏳ INSTALLATION START TIMESTAMP: $(date)"
echo ""

echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace sock-shop"
oc delete ns sock-shop &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace robot-shop"
oc delete ns robot-shop &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace awx"
oc delete ns awx &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete awx.ansible.com CustomResourceDefinition"
oc delete CustomResourceDefinition $(oc get CustomResourceDefinition| grep awx.ansible.com|awk '{print$1}') --ignore-not-found
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace ibm-aiops-demo-ui"
oc delete ns ibm-aiops-demo-ui &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace ibm-aiops-tools"
oc delete ns ibm-aiops-tools &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace openldap"
oc delete ns openldap &
echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace ibm-aiops-installer"
oc delete ns ibm-aiops-installer &



oc delete ClusterRoleBinding admin-demo-user                   
oc delete ClusterRoleBinding admin-nik-user                    
oc delete ClusterRoleBinding awx-default                       
oc delete ClusterRoleBinding default-robotinfo1-admin          
oc delete ClusterRoleBinding default-robotinfo2-admin          
oc delete ClusterRoleBinding default-sockinfo1-admin           
oc delete ClusterRoleBinding default-sockinfo2-admin           
oc delete ClusterRoleBinding ibm-aiops-demo-ui-admin-crb       
oc delete ClusterRoleBinding ibm-aiops-installer-admin         
oc delete ClusterRoleBinding ibm-aiops-installer-default-admin 
oc delete ClusterRoleBinding robot-shop                        
oc delete ClusterRoleBinding test-admin    

echo "------------------------------------------------------------------------------------------------------------------------------"
echo " 🧻 Delete Namespace ibm-aiops"
oc delete ns ibm-aiops &


