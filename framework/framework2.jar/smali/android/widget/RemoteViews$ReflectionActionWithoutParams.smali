.class final Landroid/widget/RemoteViews$ReflectionActionWithoutParams;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReflectionActionWithoutParams"
.end annotation


# static fields
.field public static final TAG:I = 0x5


# instance fields
.field final methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V
    .registers 5
    .param p2, "viewId"    # I
    .param p3, "methodName"    # Ljava/lang/String;

    .prologue
    .line 971
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 972
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 973
    iput-object p3, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    .line 974
    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 976
    iput-object p1, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 978
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    .line 979
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 989
    iget v3, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 990
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_9

    .line 999
    :goto_8
    return-void

    .line 993
    :cond_9
    :try_start_9
    iget-object v3, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->this$0:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    const/4 v5, 0x0

    # invokes: Landroid/widget/RemoteViews;->getMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v3, v2, v4, v5}, Landroid/widget/RemoteViews;->access$300(Landroid/widget/RemoteViews;Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_9 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_1b

    goto :goto_8

    .line 994
    :catch_19
    move-exception v0

    .line 995
    .local v0, "e":Landroid/widget/RemoteViews$ActionException;
    throw v0

    .line 996
    .end local v0    # "e":Landroid/widget/RemoteViews$ActionException;
    :catch_1b
    move-exception v1

    .line 997
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v3, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1011
    const-string v0, "ReflectionActionWithoutParams"

    return-object v0
.end method

.method public mergeBehavior()I
    .registers 3

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    const-string/jumbo v1, "showNext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    const-string/jumbo v1, "showPrevious"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1004
    :cond_16
    const/4 v0, 0x2

    .line 1006
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 982
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    iget v0, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    iget-object v0, p0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 985
    return-void
.end method
