.class Lcom/sec/android/glview/TwGLViewGroup$1;
.super Ljava/lang/Object;
.source "TwGLViewGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLViewGroup;->sortViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/glview/TwGLView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sec/android/glview/TwGLViewGroup$1;->this$0:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView;)I
    .locals 3
    .param p1, "source"    # Lcom/sec/android/glview/TwGLView;
    .param p2, "target"    # Lcom/sec/android/glview/TwGLView;

    .prologue
    .line 578
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLayoutZ()F

    move-result v0

    .line 579
    .local v0, "sourceZ":F
    invoke-virtual {p2}, Lcom/sec/android/glview/TwGLView;->getLayoutZ()F

    move-result v1

    .line 581
    .local v1, "targetZ":F
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 575
    check-cast p1, Lcom/sec/android/glview/TwGLView;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sec/android/glview/TwGLView;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup$1;->compare(Lcom/sec/android/glview/TwGLView;Lcom/sec/android/glview/TwGLView;)I

    move-result v0

    return v0
.end method
