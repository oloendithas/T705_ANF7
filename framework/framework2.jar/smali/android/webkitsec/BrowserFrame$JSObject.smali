.class Landroid/webkitsec/BrowserFrame$JSObject;
.super Ljava/lang/Object;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/BrowserFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSObject"
.end annotation


# instance fields
.field object:Ljava/lang/Object;

.field requireAnnotation:Z

.field final synthetic this$0:Landroid/webkitsec/BrowserFrame;


# direct methods
.method public constructor <init>(Landroid/webkitsec/BrowserFrame;Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "requireAnnotation"    # Z

    .prologue
    .line 113
    iput-object p1, p0, Landroid/webkitsec/BrowserFrame$JSObject;->this$0:Landroid/webkitsec/BrowserFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Landroid/webkitsec/BrowserFrame$JSObject;->object:Ljava/lang/Object;

    .line 115
    iput-boolean p3, p0, Landroid/webkitsec/BrowserFrame$JSObject;->requireAnnotation:Z

    .line 116
    return-void
.end method