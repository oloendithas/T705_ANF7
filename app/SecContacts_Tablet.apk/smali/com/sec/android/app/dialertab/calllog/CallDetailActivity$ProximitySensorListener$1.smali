.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 505
    .local v0, "blankView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$1;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 507
    return-void
.end method
