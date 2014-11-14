.class Lcom/samsung/android/toolbox/TwToolBoxViewer$7;
.super Ljava/lang/Object;
.source "TwToolBoxViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxViewer;->backButtonTapEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$7;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 313
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 317
    :goto_9
    return-void

    .line 314
    :catch_a
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method
