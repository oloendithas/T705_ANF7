.class Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;
.super Ljava/lang/Object;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardMultiUserSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 2

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserSelectorView$6;->this$0:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    # invokes: Lcom/android/keyguard/KeyguardMultiUserSelectorView;->clickArrowButton()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->access$300(Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    .line 526
    return-void
.end method
