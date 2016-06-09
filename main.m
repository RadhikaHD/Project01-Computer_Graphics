//
//  main.m
//  probook
//
//  Created by Radhika Hansraj Dhaipule on 1/26/15.
//  Copyright (c) 2015 Radhika Hansraj Dhaipule. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <math.h>

struct point {
    double x,y;
};

struct point R[]={
    380.0, 0.06,
    390.0, 0.04,
    400.0, 0.05,
    410.0, 0.03,
    420.0, 0.01,
    430.0, 0.02,
    440.0, 0.01,
    450.0, 0.00,
    460.0, 0.09,
    470.0, 0.15,
    480.0, 0.24,
    490.0, 0.31,
    500.0, 0.40,
    510.0, 0.49,
    520.0, 0.52,
    530.0, 0.63,
    540.0, 0.72,
    550.0, 0.78,
    560.0, 0.83,
    570.0, 0.84,
    580.0, 0.84,
    590.0, 0.83,
    600.0, 0.82,
    610.0, 0.84,
    620.0, 0.85,
    630.0, 0.86,
    640.0, 0.83,
    650.0, 0.83,
    660.0, 0.82,
    670.0, 0.82,
    680.0, 0.81,
    690.0, 0.81,
    700.0, 0.81,
    710.0, 0.82,
    720.0, 0.83,
    730.0, 0.84,
    740.0, 0.84,
    750.0, 0.85,
    760.0, 0.87,
    770.0, 0.90,
};


struct point fx[]={
    380.0, 0.0013928,
    390.0, 0.0042563,
    400.0, 0.0144416,
    410.0, 0.0431500,
    420.0, 0.1344313,
    430.0, 0.2839478,
    440.0, 0.3468990,
    450.0, 0.3362033,
    460.0, 0.2909090,
    470.0, 0.1953823,
    480.0, 0.0956345,
    490.0, 0.0320108,
    500.0, 0.0049194,
    510.0, 0.0093197,
    520.0, 0.0632681,
    530.0, 0.1654689,
    540.0, 0.2903863,
    550.0, 0.4334710,
    560.0, 0.5944697,
    570.0, 0.7621835,
    580.0, 0.9162317,
    590.0, 1.0265858,
    600.0, 1.0619702,
    610.0, 1.0028369,
    620.0, 0.8544512,
    630.0, 0.6424434,
    640.0, 0.4478554,
    650.0, 0.2835212,
    660.0, 0.1649259,
    670.0, 0.0874030,
    680.0, 0.0467659,
    690.0, 0.0226734,
    700.0, 0.0113525,
    710.0, 0.0058147,
    720.0, 0.0029073,
    730.0, 0.0014398,
    740.0, 0.0006922,
    750.0, 0.0003323,
    760.0, 0.0001661,
    770.0, 0.0000831
};

struct point fy[]={
    380.0, 0.00004,
    390.0, 0.00012,
    400.0, 0.0004,
    410.0, 0.0012,
    420.0, 0.004,
    430.0, 0.0116,
    440.0, 0.023,
    450.0, 0.038,
    460.0, 0.06,
    470.0, 0.091,
    480.0, 0.139,
    490.0, 0.208,
    500.0, 0.323,
    510.0, 0.503,
    520.0, 0.71,
    530.0, 0.862,
    540.0, 0.954,
    550.0, 0.995,
    560.0, 0.995,
    570.0, 0.952,
    580.0, 0.87,
    590.0, 0.757,
    600.0, 0.631,
    610.0, 0.503,
    620.0, 0.381,
    630.0, 0.265,
    640.0, 0.175,
    650.0, 0.107,
    660.0, 0.061,
    670.0, 0.032,
    680.0, 0.017,
    690.0, 0.0082,
    700.0, 0.0041,
    710.0, 0.0021,
    720.0, 0.00105,
    730.0, 0.00052,
    740.0, 0.00025,
    750.0, 0.00012,
    760.0, 0.00006,
    770.0, 0.00003
};

struct point fz[]={
    380.0, 0.0065672,
    390.0, 0.0201134,
    400.0, 0.0684916,
    410.0, 0.2056500,
    420.0, 0.6458823,
    430.0, 1.3856115,
    440.0, 1.7401926,
    450.0, 1.7726892,
    460.0, 1.6692929,
    470.0, 1.2880121,
    480.0, 0.8128409,
    490.0, 0.4650738,
    500.0, 0.2720063,
    510.0, 0.1581680,
    520.0, 0.0782549,
    530.0, 0.0421426,
    540.0, 0.0203624,
    550.0, 0.0087671,
    560.0, 0.0038558,
    570.0, 0.0020595,
    580.0, 0.0015374,
    590.0, 0.0011600,
    600.0, 0.0007621,
    610.0, 0.0003765,
    620.0, 0.0001977,
    630.0, 0.0000907,
    640.0, 0.0000311,
    650.0, 0.0000039,
    660.0, 0.0,
    670.0, 0.0,
    680.0, 0.0,
    690.0, 0.0,
    700.0, 0.0, 
    710.0, 0.0,
    720.0, 0.0,
    730.0, 0.0,
    740.0, 0.0,
    750.0, 0.0,
    760.0, 0.0,
    770.0, 0.0
};


int main()
{
    int arrlength;
    int i,j,k,l,a,b,d,p,q,r,t,u,v;
    double slope[39];
    double consts[39];
    double slopeR[39];
    double constsR[39];
    double slopeX[39];
    double constsX[39];
    double slopeZ[39];
    double constsZ[39];
    double N= 0;
    double step = 0;
    double stepY = 0;
    double stepX = 0;
    double stepZ = 0;
    double sum= 0;
    double Y= 0;
    double X= 0;
    double Z= 0;
    
    arrlength = sizeof(fy)/ sizeof(fy[0]);
    printf("length of fy is : %d\n", arrlength);
    
    //calculate N
    
    for (l=0; l<(arrlength-1); l++)
    {
        N = N + ((fy[l+1].y + fy[l].y)*5);
        //printf("\n%lf\n", N);
        
    }
    
    printf("Value of N is: \n%lf\n ", N);
    
    
    
    
    //for fy
    
    printf("\n slopes for fy \n");
    
    for (i=0; i<(arrlength-1); i++)
    {
        slope[i] = (fy[i+1].y - fy[i].y)/ 10;
        printf("%lf\n", slope[i]);
    }
    
    printf("\n consts for fy \n");
    for (j=0; j<(arrlength-1);j++)
    {
        consts[j] = (slope[j]*(-fy[j].x)) + fy[j].y;
        printf("\n%lf\n", consts[j]);
    }
    
    printf("\n steps for fy \n");
    for (k =0; k<(arrlength-1); k++)
    {
        step = ((slope[k]/2)*(pow((fy[k+1].x),2)- pow((fy[k].x),2)))+ (consts[k]*10);
        
        //printf("\n%lf\n", step);
        sum = sum + step;
        //printf("\n%lf\n", sum);
    }
    
    printf(" Value of N calculated using integrals: %lf\n  ", sum);
    
    
    //for fx
    
    printf("\n slopes for fx \n");
    
    for (p=0; p<(arrlength-1); p++)
    {
        slopeX[p] = (fx[p+1].y - fx[p].y)/ 10;
        printf("%lf\n", slopeX[p]);
    }
    
    printf("\n consts for fx \n");
    for (q=0; q<(arrlength-1);q++)
    {
        constsX[q] = (slopeX[q]*(-fx[q].x)) + fx[q].y;
        printf("\n%lf\n", constsX[q]);
    }
    
   
    
    //for fz
    
    printf("\n slopes for fz \n ");
    
    for (t=0; t<(arrlength-1); t++)
    {
        slopeZ[t] = (fz[t+1].y - fz[t].y)/ 10;
        printf("%lf\n", slopeZ[t]);
    }
    
    printf("\n consts for fz \n ");
    for (u=0; u<(arrlength-1);u++)
    {
        constsZ[u] = (slopeZ[u]*(-fz[u].x)) + fz[u].y;
        printf("\n%lf\n", constsZ[u]);
    }
    
   
    
    
   /* arrlength1 = sizeof(slope)/ sizeof(slope[0]);
    printf("%d\n", arrlength1);*/
    
    
    //for R
    
    printf("\n slopes for R \n");
    
    for (a=0; a<(arrlength-1); a++)
    {
        slopeR[a] = (R[a+1].y - R[a].y)/ 10;
        printf("%lf\n", slopeR[a]);
    }
    
    printf("consts for R");
    for (b=0; b<(arrlength-1);b++)
    {
        constsR[b] = (slopeR[b]*(-R[b].x)) + R[b].y;
        printf("\n%lf\n", constsR[b]);
    }
    
    //printf("steps for Y ");
    for (d =0; d<(arrlength-1); d++)
    {
        stepY = (((slope[d]*slopeR[d])*(pow(R[d+1].x,3)- pow(R[d].x,3)))/3) + ((((slope[d]*constsR[d])+(consts[d]*slopeR[d]))* (pow(R[d+1].x,2)- pow(R[d].x,2)))/2)+ (consts[d]*constsR[d]*10);
        //printf("\n%lf\n", stepY);
        Y = Y + stepY;
        //printf("\n%lf\n", Y);
    }
    
    printf("Value of Y is: \n%lf\n", Y/N);
    
    //printf("steps for X ");
    for (r =0; r<(arrlength-1); r++)
    {
        stepX = (((slopeX[r]*slopeR[r])*(pow(R[r+1].x,3)- pow(R[r].x,3)))/3) + ((((slopeX[r]*constsR[r])+(constsX[r]*slopeR[r]))* (pow(R[r+1].x,2)- pow(R[r].x,2)))/2)+ (constsX[r]*constsR[r]*10);
        //printf("\n%lf\n", stepX);
        X = X + stepX;
        //printf("\n%lf\n", X);
    }
    
    printf("Value of X is: \n%lf\n", X/N);
    
    //printf("steps for Z ");
    for (v =0; v<(arrlength-1); v++)
    {
        stepZ = (((slopeZ[v]*slopeR[v])*(pow(R[v+1].x,3)- pow(R[v].x,3)))/3) + ((((slopeZ[v]*constsR[v])+(constsZ[v]*slopeR[v]))* (pow(R[v+1].x,2)- pow(R[v].x,2)))/2)+ (constsZ[v]*constsR[v]*10);
        //printf("\n%lf\n", stepZ);
        Z = Z + stepZ;
        //printf("\n%lf\n", Z);
    }
    
    printf("Value of Z is: \n%lf\n", Z/N);
    
    printf("Value of N is: \n%lf\n", N);
    return 0;
}
