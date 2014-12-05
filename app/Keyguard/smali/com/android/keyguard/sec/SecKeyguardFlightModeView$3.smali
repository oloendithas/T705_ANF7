.class Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;
.super Ljava/lang/Object;
.source "SecKeyguardFlightModeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V
    .registers 2

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;->this$0:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 150
    return-void
.end method
