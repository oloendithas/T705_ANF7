.class public Landroid/os/StrictMode$StrictModeViolation;
.super Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictModeViolation"
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "policyState"    # I
    .param p2, "policyViolated"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-direct {p0, p1, p2, p3}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    .line 821
    return-void
.end method
