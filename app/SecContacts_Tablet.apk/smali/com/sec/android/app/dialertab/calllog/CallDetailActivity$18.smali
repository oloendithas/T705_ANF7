.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->motionDialogInitialOff()V
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
    .line 4458
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Lcom/sec/android/touchwiz/widget/TwCompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 4460
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$18;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const-string v1, "MotionDialogOnOff"

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->setCheckedOnOff(Ljava/lang/String;Z)V

    .line 4461
    return-void
.end method
