.class final Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;
.super Ljava/lang/Object;
.source "RawContactEditorView.java"

# interfaces
.implements Lcom/android/contacts/editor/KindSectionView$FocusOrderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/RawContactEditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FocusOrderChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/RawContactEditorView;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/RawContactEditorView;Lcom/android/contacts/editor/RawContactEditorView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p2, "x1"    # Lcom/android/contacts/editor/RawContactEditorView$1;

    .prologue
    .line 1559
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method


# virtual methods
.method public onFocusOrderChanged()V
    .locals 1

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView$FocusOrderChangeListener;->this$0:Lcom/android/contacts/editor/RawContactEditorView;

    # invokes: Lcom/android/contacts/editor/RawContactEditorView;->setFocusOrder()V
    invoke-static {v0}, Lcom/android/contacts/editor/RawContactEditorView;->access$1000(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1564
    return-void
.end method
