.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$17;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 4451
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4453
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$17;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->tiltPopupAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 4454
    return-void
.end method
