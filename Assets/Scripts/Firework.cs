using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class Firework : MonoBehaviour
{

    public float propelTime;
    public float propelForce;

    public float mainChargeTime;

    public VisualEffect trailVFX;
    public VisualEffect chargeVFX;

    bool launchFirework;
    bool startMainChargeFuse;
    float launchTime;
    float chargeFuseTime;
    Rigidbody rb;

    
    private void Start()
    {
        rb = GetComponent<Rigidbody>();
    }
    void Update()
    {
        if (!launchFirework && Input.GetKeyDown(KeyCode.Space))
        {
            rb.isKinematic = false;
            launchFirework = true;
            launchTime = Time.time;
        }
    }
    private void FixedUpdate()
    {
        if (launchFirework)
        {
            if (Time.time - launchTime < propelTime)
            {
                trailVFX.SendEvent("StartTrail");
                rb.AddForce(Vector3.up * propelForce, ForceMode.Acceleration);
            } else if (!startMainChargeFuse)
            {
                trailVFX.SendEvent("StopTrail");
                startMainChargeFuse = true;
                chargeFuseTime = Time.time;
            } else
            {
                if (!(Time.time - chargeFuseTime < mainChargeTime) && rb.isKinematic == false)
                {
                    Debug.Log("BOOM!");
                    chargeVFX.SendEvent("SetCharge");

                    rb.isKinematic = true;
                }

            }
        }
    }

    private void OnDrawGizmos()
    {
        Gizmos.color = Color.green;
        Gizmos.DrawWireSphere(transform.position, 1);
    }
}
