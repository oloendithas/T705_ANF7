.class Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;)V
    .registers 2

    .prologue
    .line 1312
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl$1;->this$1:Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewClassic$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 1315
    return-void
.end method
