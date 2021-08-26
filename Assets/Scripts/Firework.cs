using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Firework : MonoBehaviour
{

    public float propelTime;
    public float propelForce;
    [Range(0,90)]
    public float launchAngle;

    public float mainChargeTime;

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
                rb.AddForce(Vector3.up * propelForce, ForceMode.Acceleration);
            } else if (!startMainChargeFuse)
            {
                startMainChargeFuse = true;
                chargeFuseTime = Time.time;
            } else
            {
                if (!(Time.time - chargeFuseTime < mainChargeTime))
                {
                    Debug.Log("BOOM!");
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
