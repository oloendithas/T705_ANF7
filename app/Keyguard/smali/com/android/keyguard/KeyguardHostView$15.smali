.class Lcom/android/keyguard/KeyguardHostView$15;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 2286
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$15;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$15;->this$0:Lcom/android/keyguard/KeyguardHostView;

    # getter for: Lcom/android/keyguard/KeyguardHostView;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$3400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchWidgetPicker(I)V

    .line 2291
    return-void
.end method
