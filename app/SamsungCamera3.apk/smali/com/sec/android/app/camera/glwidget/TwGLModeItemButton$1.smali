.class Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$1;
.super Ljava/lang/Object;
.source "TwGLModeItemButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->setDrawHighlight(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLModeItemButton;Z)V

    .line 93
    return-void
.end method
