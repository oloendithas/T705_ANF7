.class Lcom/android/contacts/editor/RawContactEditorView$CancelListener;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$CancelListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/editor/RawContactEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p2, "x1"    # Lcom/android/contacts/editor/RawContactEditorView$1;

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$CancelListener;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1137
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1133
    return-void
.end method
