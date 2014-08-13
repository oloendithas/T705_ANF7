.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->configureActionBar(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 3762
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3770
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$12;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3771
    return-void
.end method
