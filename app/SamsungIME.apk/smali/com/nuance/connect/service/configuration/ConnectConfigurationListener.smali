.class public Lcom/nuance/connect/service/configuration/ConnectConfigurationListener;
.super Ljava/lang/Object;
.source "ConnectConfigurationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationBoolChange(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 12
    return-void
.end method

.method public onConfigurationIntChange(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 9
    return-void
.end method

.method public onConfigurationStringChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6
    return-void
.end method
