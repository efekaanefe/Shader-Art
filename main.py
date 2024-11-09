import moderngl_window as mglw


class App(mglw.WindowConfig):

    window_size = (1600, 900) 
    resource_dir = "shaders\\basic_window"

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        # create screen aligned quad
        self.quad = mglw.geometry.quad_fs()
        # load shader program
        self.prog = self.load_program(vertex_shader = "vertex.glsl",
                                        fragment_shader = "fragment.glsl")
        
        self.set_uniform("resolution",self.window_size)

    def set_uniform(self, u_name, u_value):
        try:
            self.prog[u_name] = u_value
        except KeyError:
            print(f"uniform: {u_name} - not used in shader")

    
    def render(self, time, frame_time):
        self.ctx.clear()
        self.set_uniform("time", time)
        self.quad.render(self.prog)

if __name__=="__main__":
    mglw.run_window_config(App)
