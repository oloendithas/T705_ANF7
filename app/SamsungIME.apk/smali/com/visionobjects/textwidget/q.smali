.class final Lcom/visionobjects/textwidget/q;
.super Ljava/lang/Object;
.source "TextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/visionobjects/textwidget/TextWidget;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/TextWidget;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/visionobjects/textwidget/q;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/visionobjects/textwidget/q;->a:Lcom/visionobjects/textwidget/TextWidget;

    invoke-static {v0}, Lcom/visionobjects/textwidget/TextWidget;->b(Lcom/visionobjects/textwidget/TextWidget;)V

    .line 1195
    return-void
.end method
