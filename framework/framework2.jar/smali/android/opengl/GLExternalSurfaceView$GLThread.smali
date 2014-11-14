.class Landroid/opengl/GLExternalSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLExternalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLExternalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglCreateSurfaceFailCnt:I

.field private mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLExternalSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLExternalSurfaceView;Landroid/opengl/GLExternalSurfaceView$Renderer;)V
    .registers 6
    .param p2, "renderer"    # Landroid/opengl/GLExternalSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1065
    iput-object p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1067
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1068
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1069
    iput-boolean v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1070
    iput v2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    .line 1071
    iput-object p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    .line 1072
    iput v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1073
    return-void
.end method

.method static synthetic access$1202(Landroid/opengl/GLExternalSurfaceView$GLThread;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/opengl/GLExternalSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1114
    new-instance v13, Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-direct {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;-><init>(Landroid/opengl/GLExternalSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    .line 1115
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1116
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1118
    const/4 v6, 0x0

    .line 1119
    .local v6, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 1120
    .local v2, "createEglContext":Z
    const/4 v3, 0x0

    .line 1121
    .local v3, "createEglSurface":Z
    const/4 v8, 0x0

    .line 1122
    .local v8, "lostEglContext":Z
    const/4 v9, 0x0

    .line 1123
    .local v9, "sizeChanged":Z
    const/4 v12, 0x0

    .line 1124
    .local v12, "wantRenderNotification":Z
    const/4 v4, 0x0

    .line 1125
    .local v4, "doRenderNotification":Z
    const/4 v1, 0x0

    .line 1126
    .local v1, "askedToReleaseEglContext":Z
    const/4 v11, 0x0

    .line 1127
    .local v11, "w":I
    const/4 v7, 0x0

    .line 1128
    .local v7, "h":I
    const/4 v5, 0x0

    .line 1131
    .local v5, "event":Ljava/lang/Runnable;
    :cond_22
    :goto_22
    :try_start_22
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_273

    .line 1133
    :goto_27
    :try_start_27
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_3b

    .line 1134
    monitor-exit v14
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_270

    .line 1364
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1365
    :try_start_33
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1367
    monitor-exit v14
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4ef

    .line 1134
    return-void

    .line 1137
    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5a

    .line 1138
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    .line 1288
    :goto_52
    monitor-exit v14
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_270

    .line 1290
    if-eqz v5, :cond_36a

    .line 1291
    :try_start_55
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_273

    .line 1292
    const/4 v5, 0x0

    .line 1293
    goto :goto_22

    .line 1143
    :cond_5a
    :try_start_5a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-eq v13, v15, :cond_a0

    .line 1144
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    .line 1145
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1147
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mPaused is now "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_a0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v13, :cond_cf

    .line 1154
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL context because asked to tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1157
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1158
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1159
    const/4 v1, 0x1

    .line 1163
    :cond_cf
    if-eqz v8, :cond_d8

    .line 1164
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1165
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1166
    const/4 v8, 0x0

    .line 1170
    :cond_d8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_166

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v13, :cond_166

    .line 1172
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL surface because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$900(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_118

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_138

    .line 1176
    :cond_118
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1178
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "releasing EGL context because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_138
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_166

    .line 1182
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    .line 1184
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "terminating EGL because paused tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_166
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_1a4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_1a4

    .line 1192
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticed surfaceView surface lost tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_198

    .line 1195
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1197
    :cond_198
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1198
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    :cond_1a4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_1d9

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_1d9

    .line 1204
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticed surfaceView surface acquired tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1207
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1210
    :cond_1d9
    if-eqz v4, :cond_206

    .line 1212
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sending render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v12, 0x0

    .line 1215
    const/4 v4, 0x0

    .line 1216
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1217
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1221
    :cond_206
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v13

    if-eqz v13, :cond_2b4

    .line 1224
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_215

    .line 1225
    if-eqz v1, :cond_281

    .line 1226
    const/4 v1, 0x0

    .line 1241
    :cond_215
    :goto_215
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_228

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_228

    .line 1242
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1243
    const/4 v3, 0x1

    .line 1244
    const/4 v9, 0x1

    .line 1247
    :cond_228
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_2b4

    .line 1248
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13}, Landroid/opengl/GLExternalSurfaceView;->access$1000(Landroid/opengl/GLExternalSurfaceView;)Z

    move-result v13

    if-eqz v13, :cond_2ae

    .line 1249
    const/4 v9, 0x1

    .line 1250
    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1251
    move-object/from16 v0, p0

    iget v7, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1252
    const/4 v12, 0x1

    .line 1254
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "noticing that we want render notification tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v15, 0x0

    # setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v13, v15}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    .line 1268
    :goto_267
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_52

    .line 1288
    :catchall_270
    move-exception v13

    monitor-exit v14
    :try_end_272
    .catchall {:try_start_5a .. :try_end_272} :catchall_270

    :try_start_272
    throw v13
    :try_end_273
    .catchall {:try_start_272 .. :try_end_273} :catchall_273

    .line 1364
    :catchall_273
    move-exception v13

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1365
    :try_start_279
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1366
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1367
    monitor-exit v14
    :try_end_280
    .catchall {:try_start_279 .. :try_end_280} :catchall_4ec

    .line 1364
    throw v13

    .line 1227
    :cond_281
    :try_start_281
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)Z
    :try_end_28a
    .catchall {:try_start_281 .. :try_end_28a} :catchall_270

    move-result v13

    if-eqz v13, :cond_215

    .line 1229
    :try_start_28d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->start()V
    :try_end_294
    .catch Ljava/lang/RuntimeException; {:try_start_28d .. :try_end_294} :catch_2a3
    .catchall {:try_start_28d .. :try_end_294} :catchall_270

    .line 1234
    const/4 v13, 0x1

    :try_start_295
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1235
    const/4 v2, 0x1

    .line 1237
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_215

    .line 1230
    :catch_2a3
    move-exception v10

    .line 1231
    .local v10, "t":Ljava/lang/RuntimeException;
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1232
    throw v10

    .line 1266
    .end local v10    # "t":Ljava/lang/RuntimeException;
    :cond_2ae
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_267

    .line 1275
    :cond_2b4
    const-string v13, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "waiting tid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglContext: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHaveEglSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mPaused: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHasSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWaitingForSurface: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWidth: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mHeight: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRequestRender: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mRenderMode: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_368
    .catchall {:try_start_295 .. :try_end_368} :catchall_270

    goto/16 :goto_27

    .line 1296
    :cond_36a
    if-eqz v3, :cond_3be

    .line 1298
    :try_start_36c
    const-string v13, "GLThread"

    const-string v14, "egl createSurface"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v14}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0

    .line 1301
    if-nez v6, :cond_3b1

    .line 1304
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t create a surface "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    move-object/from16 v0, p0

    iget v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    goto/16 :goto_22

    .line 1309
    :cond_3b1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglCreateSurfaceFailCnt:I

    .line 1310
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1311
    const/4 v3, 0x0

    .line 1314
    :cond_3be
    if-eqz v2, :cond_3d6

    .line 1316
    const-string v13, "GLThread"

    const-string/jumbo v14, "onSurfaceCreated"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    iget-object v14, v14, Landroid/opengl/GLExternalSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v13, v6, v14}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1319
    const/4 v2, 0x0

    .line 1322
    :cond_3d6
    if-eqz v9, :cond_409

    .line 1324
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onSurfaceChanged("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6, v11, v7}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1327
    const/4 v9, 0x0

    .line 1330
    :cond_409
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_421

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_461

    .line 1331
    :cond_421
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[onDrawFrame] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 1339
    :cond_461
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLExternalSurfaceView$Renderer;

    invoke-interface {v13, v6}, Landroid/opengl/GLExternalSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    if-nez v13, :cond_480

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v13}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Surface;->isValid()Z

    move-result v13

    if-nez v13, :cond_4c0

    .line 1343
    :cond_480
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[egl.swap] mRequestPaused = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ,surface.valid = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    invoke-virtual {v15}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Surface;->isValid()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 1348
    :cond_4c0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v13}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->swap()Z

    move-result v13

    if-nez v13, :cond_4e7

    .line 1350
    const-string v13, "GLThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "egl context lost tid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e6
    .catchall {:try_start_36c .. :try_end_4e6} :catchall_273

    .line 1352
    const/4 v8, 0x1

    .line 1355
    :cond_4e7
    if-eqz v12, :cond_22

    .line 1356
    const/4 v4, 0x1

    goto/16 :goto_22

    .line 1367
    :catchall_4ec
    move-exception v13

    :try_start_4ed
    monitor-exit v14
    :try_end_4ee
    .catchall {:try_start_4ed .. :try_end_4ee} :catchall_4ec

    throw v13

    :catchall_4ef
    move-exception v13

    :try_start_4f0
    monitor-exit v14
    :try_end_4f1
    .catchall {:try_start_4f0 .. :try_end_4f1} :catchall_4ef

    throw v13
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1376
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1a

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1a

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_19

    iget v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private stopEglContextLocked()V
    .registers 2

    .prologue
    .line 1107
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1108
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->finish()V

    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1110
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1112
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1098
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLExternalSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLExternalSurfaceView$EglHelper;->destroySurface()V

    .line 1100
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1372
    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getRenderMode()I
    .registers 3

    .prologue
    .line 1392
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1393
    :try_start_5
    iget v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1394
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onPause()V
    .registers 7

    .prologue
    .line 1439
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1441
    :try_start_5
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    .line 1444
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1445
    :goto_2c
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_50

    .line 1447
    const-string v1, "Main thread"

    const-string/jumbo v3, "onPause waiting for mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_4d

    .line 1450
    :try_start_3c
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_44
    .catchall {:try_start_3c .. :try_end_43} :catchall_4d

    goto :goto_2c

    .line 1451
    :catch_44
    move-exception v0

    .line 1452
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 1455
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v1

    :cond_50
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4d

    .line 1456
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 1459
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1461
    :try_start_5
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestPaused:Z

    .line 1464
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1465
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1466
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    :goto_32
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_5a

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_5a

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_5a

    .line 1469
    const-string v1, "Main thread"

    const-string/jumbo v3, "onResume waiting for !mPaused."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_57

    .line 1472
    :try_start_46
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catchall {:try_start_46 .. :try_end_4d} :catchall_57

    goto :goto_32

    .line 1473
    :catch_4e
    move-exception v0

    .line 1474
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_32

    .line 1477
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_57
    move-exception v1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw v1

    :cond_5a
    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 1478
    return-void
.end method

.method public onWindowResize(II)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1481
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1482
    :try_start_5
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWidth:I

    .line 1483
    iput p2, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHeight:I

    .line 1484
    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    const/4 v3, 0x1

    # setter for: Landroid/opengl/GLExternalSurfaceView;->mSizeChanged:Z
    invoke-static {v1, v3}, Landroid/opengl/GLExternalSurfaceView;->access$1002(Landroid/opengl/GLExternalSurfaceView;Z)Z

    .line 1485
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1486
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    .line 1487
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1491
    :goto_1c
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_73

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_73

    iget-object v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v1}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/opengl/GLExternalSurfaceView$GLThread;->ableToDraw()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1493
    const-string v1, "Main thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->this$0:Landroid/opengl/GLExternalSurfaceView;

    # getter for: Landroid/opengl/GLExternalSurfaceView;->mGLThread:Landroid/opengl/GLExternalSurfaceView$GLThread;
    invoke-static {v4}, Landroid/opengl/GLExternalSurfaceView;->access$1100(Landroid/opengl/GLExternalSurfaceView;)Landroid/opengl/GLExternalSurfaceView$GLThread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_70

    .line 1496
    :try_start_5f
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_66} :catch_67
    .catchall {:try_start_5f .. :try_end_66} :catchall_70

    goto :goto_1c

    .line 1497
    :catch_67
    move-exception v0

    .line 1498
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c

    .line 1501
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_70
    move-exception v1

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_70

    throw v1

    :cond_73
    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_70

    .line 1502
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1530
    if-nez p1, :cond_b

    .line 1531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1533
    :cond_b
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1534
    :try_start_10
    iget-object v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1536
    monitor-exit v1

    .line 1537
    return-void

    .line 1536
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 4

    .prologue
    .line 1507
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1508
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldExit:Z

    .line 1509
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1510
    :goto_f
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    .line 1512
    :try_start_13
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24

    goto :goto_f

    .line 1513
    :catch_1b
    move-exception v0

    .line 1514
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1517
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 1518
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1521
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1522
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1523
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1398
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1399
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRequestRender:Z

    .line 1400
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1401
    monitor-exit v1

    .line 1402
    return-void

    .line 1401
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1079
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :try_start_37
    invoke-direct {p0}, Landroid/opengl/GLExternalSurfaceView$GLThread;->guardedRun()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_4b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 1087
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    :goto_3e
    invoke-virtual {v0, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    .line 1089
    return-void

    .line 1087
    :catchall_42
    move-exception v0

    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLExternalSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLExternalSurfaceView$GLThread;)V

    throw v0

    .line 1084
    :catch_4b
    move-exception v0

    .line 1087
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    goto :goto_3e
.end method

.method public setRenderMode(I)V
    .registers 4
    .param p1, "renderMode"    # I

    .prologue
    .line 1382
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_e

    .line 1383
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_e
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1386
    :try_start_13
    iput p1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mRenderMode:I

    .line 1387
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1388
    monitor-exit v1

    .line 1389
    return-void

    .line 1388
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public surfaceCreated()V
    .registers 7

    .prologue
    .line 1405
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1407
    :try_start_5
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceCreated tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    .line 1410
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1411
    :goto_2c
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_45

    if-nez v1, :cond_48

    .line 1413
    :try_start_34
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_45

    goto :goto_2c

    .line 1414
    :catch_3c
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 1418
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v1

    :cond_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 1419
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 7

    .prologue
    .line 1422
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1424
    :try_start_5
    const-string v1, "GLThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "surfaceDestroyed tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mHasSurface:Z

    .line 1427
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1428
    :goto_2c
    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_48

    iget-boolean v1, p0, Landroid/opengl/GLExternalSurfaceView$GLThread;->mExited:Z
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_45

    if-nez v1, :cond_48

    .line 1430
    :try_start_34
    # getter for: Landroid/opengl/GLExternalSurfaceView;->sGLThreadManager:Landroid/opengl/GLExternalSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLExternalSurfaceView;->access$800()Landroid/opengl/GLExternalSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_45

    goto :goto_2c

    .line 1431
    :catch_3c
    move-exception v0

    .line 1432
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 1435
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_45
    move-exception v1

    monitor-exit v2
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_45

    throw v1

    :cond_48
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_45

    .line 1436
    return-void
.end method
