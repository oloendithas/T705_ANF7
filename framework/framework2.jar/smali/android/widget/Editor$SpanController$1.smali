.class Landroid/widget/Editor$SpanController$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SpanController;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SpanController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SpanController;)V
    .registers 2

    .prologue
    .line 2326
    iput-object p1, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2329
    iget-object v0, p0, Landroid/widget/Editor$SpanController$1;->this$1:Landroid/widget/Editor$SpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 2330
    return-void
.end method
